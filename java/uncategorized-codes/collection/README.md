# session 10

+ solve list question

## collections 

![](https://dzone.com/storage/temp/1821372-class-and-interface-hierarchy.png)

+ List
  1. interface
  2. implement with ArrayList and LinkedList
  3. access element with index

+ Set
 1. set in math
 2. access with iterate
 3. contains, add, remove(elem)
 4. no duplicate
 5. hashSet, TreeSet, linkedHashSet

+ Map
 1. key, value 
 2. dictionary
 3. get(key)
 4. HashMap, TreeMap
  myMap = {
      "hello": "a word for greeting",
      "candle": "old source of light"
  }
  myMap.set("abc","tozihi")
  myMap.get("hello")
  Map<String,Student> st = new HashMap<>()
  st.get("ali")
  st.add("ali", new Student("ali",19))



+ queue, stack

+ Iterator
 1. for each =)
 2. iterable interface (`iterator()`)
 3. iterator: hasNext, next, remove
 
             /
 [ 0 , 1 , 2 ]


+ concurrent modification exception (fail fast)
  1. iterator is disabled!
  2. runtime exception
  3. alternatives?
  4. add to other list (after filter)
  5. iterator.remove()
  6. java8 filter

+ other iterators: 
  1. legacy iterator
  2. list iterator : good for list, previous, set, add


+ hashcode, equals


class Student implements Comparable<E> {
    final String name;
    final Long id;
    
    
    
    
    public int compareTo(Student s){
        return this.name.comapreTo(s.name) * -1;
    }

    public boolean equals(Object o){
    if(o instanceof Student){
        Student s = (Student) o;
        return s.name.equals(this.name);
    }
    return false;
    }
    public int hashCode(){
        return 31 + this.name.hashCode() + this.id.hashCode();
    }
}


+ Collections
 1. some useful methods
 2. sort, swap
 3. Arrays.sort, swap, copy, 

+ sort
 1. Collections.sort(myList)
 2. Collections.sort(myList, Collections.reverseOrder())
 3. how to sort user-defined class?
 4. comparable (compareTo, return int)
 5. comparator


read more [this link](https://www.javatpoint.com/collections-in-java)

