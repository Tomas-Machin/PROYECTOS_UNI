#include <iostream>
using namespace std;
int main()
{
	double disconfortIndex, dryTemp, wetTemp;
	cout << "enter dryTemp number" << endl;
	cin >> dryTemp;
	cout << "enter wetTemp number" << endl;
	cin >> wetTemp;
	disconfortIndex = 0.4 * (dryTemp + wetTemp) + 15;
	if (disconfortIndex >= 85) {
		cout << "unconfortable" << endl;
	}

	if (75 < disconfortIndex < 85) {
	cout << "fair" << endl;
	}
	if (disconfortIndex > 75) {
		cout << "pleasant" << endl;
	}
	system("pause");
	return 0;
}