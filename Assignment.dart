class Book{
  static int totalBooks = 0;

  String title, author;
  int publicationYear, pagesRead= 0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead){
    totalBooks = totalBooks + 1;
  }

  void read(int pages){
    pagesRead += pages;
  }

  int getBookAge(){
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }

}

void main(){

  Book book1 = Book('Hajar Bochor Dhore','Zahir Taihan', 1964, 23746);
  Book book2 = Book('Bidrohi', 'Kazi Nazrul Islam', 1922,87243);
  Book book3 = Book('Banalata Sen', 'Jibananda Das', 1935, 6923784);
  Book book4 = Book('Ayesha Mangol', 'Anisul Hoque', 2010, 504);

  book1.read(11);
  book2.read(22);
  book3.read(33);

  print('\nBook 1: ${book1.title} by ${book1.author} (${book1.publicationYear})');
  print('Pages read: ${book1.pagesRead}, Book Age: ${book1.getBookAge()} years');

  print('\nBook 2: ${book2.title} by ${book2.author} (${book2.publicationYear})');
  print('Pages read: ${book2.pagesRead}, Book Age: ${book2.getBookAge()} years');

  print('\nBook 3: ${book3.title} by ${book3.author} (${book3.publicationYear})');
  print('Pages read: ${book3.pagesRead}, Book Age: ${book3.getBookAge()} years');

  print('\nTotal number of books created: ${Book.totalBooks}');

}