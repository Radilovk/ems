.class Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->onOptionSelect(Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

.field final synthetic val$pickerViewData2:Lcom/isaigu/gymapp/bean/PickerViewData;

.field final synthetic val$pickerViewData3:Lcom/isaigu/gymapp/bean/PickerViewData;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    .line 114
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->this$2:Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->val$pickerViewData2:Lcom/isaigu/gymapp/bean/PickerViewData;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->val$pickerViewData3:Lcom/isaigu/gymapp/bean/PickerViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->this$2:Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->val$pickerViewData2:Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->val$pickerViewData3:Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->this$2:Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    iget v5, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$year:I

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->this$2:Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    iget v6, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$month:I

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2$1;->this$2:Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    iget v7, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;->val$day:I

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$500(Lcom/isaigu/gymapp/fragment/CalendarFragment;Ljava/lang/String;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;III)V

    .line 117
    return-void
.end method
