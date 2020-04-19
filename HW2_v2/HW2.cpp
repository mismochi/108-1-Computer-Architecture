#include <iostream>
using namespace std;

#ifndef SEQ1LENGTH
#define SEQ1LENGTH 8
#endif
#ifndef SEQ2LENGTH
#define SEQ2LENGTH 8
#endif

int main(int argc, char const *argv[]) {
	char seq1[SEQ1LENGTH] = {'A', 'C', 'A', 'C', 'A', 'C', 'T', 'A'}; //column
	char seq2[SEQ2LENGTH] = {'A', 'G', 'C', 'A', 'C', 'A', 'C', 'A'}; //row
	int score[SEQ2LENGTH + 1][SEQ1LENGTH + 1];
	int dir[SEQ2LENGTH + 1][SEQ1LENGTH + 1];

	for (int i = 0; i < SEQ2LENGTH + 1; ++i) {
		for (int j = 0; j < SEQ1LENGTH + 1; ++j) {
			if (i == 0 || j == 0) {
				score[i][j] = 0;
				dir[i][j] = 0;
			}
			else {
				if (seq2[i - 1] == seq1[j - 1]) {
					int match = score[i - 1][j - 1] + 3;
					int deletion = score[i - 1][j] - 2;
					int insertion = score[i][j - 1] - 2;

					if (match >= deletion && match >= insertion && match >= 0) {
						score[i][j] = match;
						dir[i][j] = 3; //high priority
					}
					else if (deletion > match && deletion >= insertion && deletion >= 0) {
						score[i][j] = deletion;
						dir[i][j] = 2; //middle priority
					}
					else if (insertion > match && insertion > deletion && insertion >= 0) {
						score[i][j] = insertion;
						dir[i][j] = 1; //low priority
					}
					else if (match < 0 && deletion < 0 && insertion < 0){
						score[i][j] = 0;
						dir[i][j] = 0;
					}
				}
				else {
					int mismatch = score[i - 1][j - 1] - 1;
					int deletion = score[i - 1][j] - 2;
					int insertion = score[i][j - 1] - 2;
					
					if (mismatch >= deletion && mismatch >= insertion && mismatch >= 0) {
						score[i][j] = mismatch;
						dir[i][j] = 3; //high priority
					}
					else if (deletion > mismatch && deletion >= insertion && deletion >= 0) {
						score[i][j] = deletion;
						dir[i][j] = 2; //middle priority
					}
					else if (insertion > mismatch && insertion > deletion && insertion >= 0) {
						score[i][j] = insertion;
						dir[i][j] = 1; //low priority
					}
					else if (mismatch < 0 && deletion < 0 && insertion < 0){
						score[i][j] = 0;
						dir[i][j] = 0;
					}
				}
			}
		}
	}

	cout << '\t' << '\t';

	for (int i = 0; i < SEQ1LENGTH; ++i)
	{
		cout << seq1[i] << '\t';
	}

	cout << endl;

	for (int i = 0; i < SEQ2LENGTH + 1; ++i) {
		if (i != 0) {
			cout << seq2[i - 1] << '\t';
		}
		else cout << '\t';

		for (int j = 0; j < SEQ1LENGTH + 1; ++j) {
			cout << score[i][j] << '\t';
		}
		cout << endl;
	}

	cout << endl;

	for (int i = 0; i < SEQ2LENGTH + 1; ++i) {
		if (i != 0) {
			cout << seq2[i - 1] << '\t';
		}
		else cout << '\t';

		for (int j = 0; j < SEQ1LENGTH + 1; ++j) {
			cout << dir[i][j] << '\t';
		}
		cout << endl;
	}

	int max = 0;
	int max_i = 0;
	int max_j = 0;

	for (int i = 0; i < SEQ2LENGTH + 1; ++i) {
		for (int j = 0; j < SEQ1LENGTH + 1; ++j) {
			if (score[i][j] >= max) {
				max = score[i][j];
				max_i = i;
				max_j = j;
			}
		}
	}

	cout << "The highest score is: " << max << endl;
	cout << "Traceback result: ";

	while (dir[max_i][max_j] != 0) {
		switch(dir[max_i][max_j]) {
			case 3:
				cout << 3;
				--max_i;
				--max_j;
				break;
			case 2:
				cout << 2;
				--max_i;
				break;
			case 1:
				cout << 1;
				--max_j;
				break;
			default:
				break;
		}
	}

	return 0;
}