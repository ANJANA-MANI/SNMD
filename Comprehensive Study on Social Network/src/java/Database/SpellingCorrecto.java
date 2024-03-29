/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

/**
 *
 * @author user
 */

import Database.Database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
// References
//  - http://norvig.com/spell-correct.html
//  - http://raelcunha.com/spell-correct.php
//  - http://surguy.net/articles/scala-spelling.xml
 
 
// Components
 
//- dictionary (pre populated), map with word to weight
//- edits : deletes, transpose, replace, inserts
//- candidates : loop edits and populate. map to weight to word
 
public class SpellingCorrecto{
  
 public String result(String valuess) throws SQLException, Exception {
     
//System.out.println("nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn");
 Database db=new Database();
 String query="select * from tbl_dictionary";
ResultSet ab=db.exquery(query);
int value=0;
String content="";
 int values=0;
 String correct="";
while(ab.next())
{
content=ab.getString("word");
values=ab.getInt("id");
 dictionary.put(content,values);

  String input = valuess;
  correct = correct(input);
  //System.out.println("mm"+correct);
 }

     return correct;
  
 }
 // word to count map - how may times a word is present - or a weight attached to a word
 public static Map<String, Integer> dictionary = new HashMap<String, Integer>();
 
 public static String correct(String word) {
   
  if(dictionary.containsKey(word))
   return word;
   
  // getting all possible edits of input word
  List<String> edits = edits(word);
   
  // Here we can either iterate through list of edits and find the 1st word that is in dictionary and return.
  // Or we can go to below logic to return the word with most weight (that we would have already stored in dictionary map)
   
  // map to hold the possible matches
  Map<Integer, String> candidates = new HashMap<Integer, String>();
 
  // keep checking the dictionary and populate the possible matches
  // it stores the count (or weight) of word and the actual word
  for(String s : edits) {
   if(dictionary.containsKey(s)) {
    candidates.put(dictionary.get(s), s);
   }
  }
   
  // one we have found possible matches - we want to return most popular (most weight) word
  if(candidates.size() > 0)
   return candidates.get(Collections.max(candidates.keySet()));
   
   
  // If none matched.
  // We will pick every word from edits and again do edits (using same previous logic) on that to see if anything matches
  // We don't do recursion here because we don't the loop to continue infinitely if none matches
  // If even after doing edits of edits, we don't find the correct word - then return.
   
  for(String s : edits) {
    
   List<String> newEdits = edits(s);
   for(String ns : newEdits) {
    if(dictionary.containsKey(ns)) {
     candidates.put(dictionary.get(ns), ns);
    }
   }
  }
  if(candidates.size() > 0)
   return candidates.get(Collections.max(candidates.keySet()));
  else
   return word;
 }
  
 // Word EDITS
 // Getting all possible corrections c of a given word w. 
 // It is the edit distance between two words: the number of edits it would take to turn one into the other
  
 public static List<String> edits(String word) {
   
  if(word == null || word.isEmpty())
   return null;
   
  List<String> list = new ArrayList<String>();
   
  String w = null;

  // deletes (remove one letter)
  for (int i = 0; i < word.length(); i++) {
   w = word.substring(0, i) + word.substring(i + 1); // ith word skipped
   list.add(w);
  }
   
  // transpose (swap adjacent letters)
  // note here i is less than word.length() - 1
  for (int i = 0; i < word.length() - 1; i++) { // < w.len -1 :: -1 because we swapped last 2 elements in go.
   w = word.substring(0, i) + word.charAt(i + 1) + word.charAt(i) + word.substring(i + 2); // swapping ith and i+1'th char
   list.add(w);
  }
   
  // replace (change one letter to another)
  for (int i = 0; i < word.length(); i++) {
   for (char c = 'a'; c <= 'z'; c++) {
    w = word.substring(0, i) + c + word.substring(i + 1); // replacing ith char with all possible alphabets
    list.add(w);
   }
  }
   
  // insert (add a letter)
  // note here i is less than and EQUAL to
  for (int i = 0; i <= word.length(); i++) { // <= because we want to insert the new char at the end as well
   for (char c = 'a'; c <= 'z'; c++) {
    w = word.substring(0, i) + c + word.substring(i); // inserting new char at ith position
    list.add(w);
   }
  }
 
  return list;
 }
}

