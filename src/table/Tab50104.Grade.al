table 50104 Grade
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "StudentID"; Code[10])
        {
            Caption = 'Student ID';
            DataClassification = CustomerContent;
        }
        field(2; "StudentName"; Text[100])
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
        }
        field(3; "SeminarID"; Code[10])
        {
            Caption = 'Seminar ID';
        }
        field(4; "Date"; Date)
        {

        }
        field(5; "Grade"; Code[5])
        {
            Caption = 'Grade';
        }
    }

    keys
    {
        key(PK; "StudentID", Grade)
        {
            Clustered = true;
        }
    }

}