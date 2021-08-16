page 50103 "Participants Subpage"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = "SeminarParticipantLine";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Participants)
            {
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(SeminarID; Rec.SeminarID)
                {

                }
            }
        }
    }

    /*     trigger OnInsert()
        begin
            if "No." = '' then begin
                trainigMealOrderSetup.get();
                trainigMealOrderSetup.TestField("Meal Order No. Series Code");
                NoSeriesMgt.InitSeries(trainigMealOrderSetup."Meal Order No. Series Code", '', Today, "No.", "No. Series");
            end;
        end; */
}