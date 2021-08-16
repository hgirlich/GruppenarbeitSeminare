table 50104 Grade
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Matrikelnummer"; Integer)
        {
            Caption = 'Matrikelnummer';
            DataClassification = CustomerContent;
        }
        field(2; "Seminar Code"; Integer)
        {
            Caption = 'Seminar Code';

        }
        field(3; "Grade"; Code[5])
        {
            Caption = 'Grade';
        }
    }

    keys
    {
        key(PK; "Matrikelnummer", Grade)
        {
            Clustered = true;
        }
    }

}