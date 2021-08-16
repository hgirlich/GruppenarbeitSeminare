table 50100 "Student"
{
    fields
    {
        field(1; StudentID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; StudentID)
        {
            Clustered = true;
        }
    }
}