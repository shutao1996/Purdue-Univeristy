//#include "Set.h"
#include <iostream>
using namespace std;

class Set
{
	unsigned int * Num;
	int length;
public:
	Set(int idx)   //initialization Set
	{
			Num = new unsigned int [idx / 32 + 1];
			for(int i = 0; i < (idx / 32 + 1); i++){
				Num[i] = 0;
			}
			length = idx / 32 + 1;
	}
	virtual ~Set() {}
	Set(const Set& p) // a = b;
	{
		length = p.length /32 + 1;
		Num = new unsigned int [length];
		for(int i = 0; i < length; i++){
			Num[i] = p.Num[i];
		}

	}
	Set operator+(int operand)  // a + 4
	{
		//Set y = *this;  //a = b
		Set y(this->length * 32 - 1);//a(63)
		int n = operand / 32; //unsigned int index
		int m = operand % 32;  //bit
		unsigned int mask = 1;
		for(int i = 0; i < y.length; i++)
		{
			y.Num[i] = this->Num[i];
		}
		y.Num[n] = (mask << m) | y.Num[n];		//0 , 1
		return y; // a = y; Set(const& Set p);
	}

	friend ostream& operator<<(ostream& os, const Set& q)   // <<a; q =a; a = 4, 16, 32
	{
		unsigned int mask = 1;
		for(int n = 0; n < q.length; n++)
		{
			for(int m = 0; m < 32; m++)
			{
				if((q.Num[n] & (mask << m)) != 0)
				{
					os << (n * 32 + m % 32);
				}
			}
		}
		return os;
	}
};

int main(int argc, char * argv[]) {

   Set a = Set(63);
   Set b = Set(63);

   a = a + 4;
   a = a + 8;
   cout << "a w/4, 8: " << a << endl;

   b = b + 8;
   b = b + 16;
   cout << "b w/8, 16: " << b << endl;

   /*a = a / b;
   cout << "a / b: " << a << endl;

   a = a + 12;
   a = a + 16;
   a = a - 12;
   a = a - 7;
   cout << "a w/4, 16: " << a << endl;

   cout << "~a: " << ~a << endl;
   cout << "a copy count: " << a.getCopyCount( ) << endl;
   cout << "b copy count: " << b.getCopyCount( ) << endl;*/
}
