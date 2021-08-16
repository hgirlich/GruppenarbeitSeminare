page 50103 "Participant List Subpage"
{
    PageType = ListPart;
    UsageCategory = Lists;
    SourceTable = "SeminarParticipantLine";
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(Participants)
            {
                field(StudentID; Rec.StudentID)
                {

                }
                field(StudentName; Rec.StudentName)
                {

                }
                field(Date; Rec.Date)
                {

                }
            }
        }
    }
}