table 50103 "SeminarParticipantLine"
{

    fields
    {
        field(1; "SeminarID"; Integer)
        {
            Caption = 'Seminar ID';
            DataClassification = CustomerContent;
        }
        field(2; "StudentID"; Integer)
        {
            Caption = 'Matrikelnummer';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; "SeminarID", "StudentID")
        {
            Clustered = true;
        }
    }

}