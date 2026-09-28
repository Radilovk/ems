.class final Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;
.super Ljava/lang/Object;
.source "PlanScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewAppt"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field day:I

.field dur:I

.field form:Landroid/widget/LinearLayout;

.field hour:I

.field minute:I

.field query:Ljava/lang/String;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field user:Lcom/isaigu/gymapp/bean/TrainUser;

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    const/16 v0, 0x1e

    iput v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->dur:I

    .line 752
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->query:Ljava/lang/String;

    .line 757
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    .line 758
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 759
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    .line 760
    add-int/lit8 v0, v0, 0xe

    div-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xf

    .line 761
    const/16 v1, 0x528

    if-lt v0, v1, :cond_31

    .line 762
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->day:I

    .line 763
    const/16 v0, 0x21c

    .line 765
    :cond_31
    const/4 v1, 0x6

    div-int/lit8 v2, v0, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->hour:I

    .line 766
    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->minute:I

    .line 767
    return-void
.end method

.method static section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 856
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 857
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 858
    return-object v0
.end method


# virtual methods
.method begin()J
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 862
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 863
    const/4 v1, 0x6

    iget v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 864
    const/16 v1, 0xb

    iget v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 865
    const/16 v1, 0xc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 866
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 867
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 868
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method open()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 770
    invoke-static {}, Lcom/isaigu/gymapp/wearable/Schedule;->users()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->users:Ljava/util/List;

    .line 771
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->users:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 772
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u043e\u0432 \u0447\u0430\u0441"

    const-string v2, "New booking"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0412 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v3, "In the tablet\'s calendar"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x26c

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 773
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 774
    const-string v1, "\u0422\u044a\u0440\u0441\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "Search client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 775
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 776
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 777
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 778
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 779
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u043f\u0438\u0448\u0438 \u0447\u0430\u0441\u0430"

    const-string v2, "Save booking"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 783
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$NaSave;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaSave;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 785
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 786
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->render()V

    .line 787
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 789
    return-void
.end method

.method render()V
    .registers 13

    .prologue
    .line 792
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 793
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    .line 794
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_41

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v3, 0x1

    invoke-static {v5, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 796
    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 797
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    :cond_41
    const/4 v2, 0x0

    .line 800
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->query:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 801
    const/4 v0, 0x1

    new-array v7, v0, [Landroid/widget/LinearLayout;

    .line 802
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 803
    const/4 v0, 0x0

    move v1, v0

    :goto_5a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b5

    const/16 v0, 0x1e

    if-ge v2, v0, :cond_b5

    .line 804
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->users:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 805
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v3, :cond_a5

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 806
    :goto_74
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ab

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v4, :cond_a8

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    :goto_8f
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/Schedule;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 803
    :goto_a1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5a

    .line 805
    :cond_a5
    const-string v3, ""

    goto :goto_74

    .line 806
    :cond_a8
    const-string v4, ""

    goto :goto_8f

    .line 809
    :cond_ab
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_109

    const/16 v4, 0xc

    if-lt v2, v4, :cond_109

    .line 817
    :cond_b5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    const-string v1, "\u0414\u0435\u043d"

    const-string v2, "Day"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 818
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 819
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 820
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 821
    const/4 v0, 0x0

    move v2, v0

    :goto_d8
    const/16 v0, 0xe

    if-ge v2, v0, :cond_149

    .line 822
    if-nez v2, :cond_132

    const-string v0, "\u0414\u043d\u0435\u0441"

    const-string v1, "Today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_e6
    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->day:I

    if-ne v2, v1, :cond_147

    const/4 v1, 0x1

    :goto_eb
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 825
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v5, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 827
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 821
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d8

    .line 812
    :cond_109
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_130

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v8, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v10, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_130

    const/4 v4, 0x1

    :goto_118
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 813
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;

    invoke-direct {v4, p0, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a1

    .line 812
    :cond_130
    const/4 v4, 0x0

    goto :goto_118

    .line 822
    :cond_132
    const/4 v0, 0x1

    if-ne v2, v0, :cond_13e

    const-string v0, "\u0423\u0442\u0440\u0435"

    const-string v1, "Tomorrow"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e6

    .line 823
    :cond_13e
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->day(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_e6

    .line 824
    :cond_147
    const/4 v1, 0x0

    goto :goto_eb

    .line 829
    :cond_149
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    const-string v1, "\u0427\u0430\u0441"

    const-string v2, "Time"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 830
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/widget/LinearLayout;

    .line 831
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    const/4 v0, 0x6

    move v1, v0

    :goto_168
    const/16 v0, 0x16

    if-gt v1, v0, :cond_190

    .line 833
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->hour:I

    if-ne v1, v0, :cond_18e

    const/4 v0, 0x1

    :goto_175
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 834
    new-instance v3, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v5, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 832
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_168

    .line 833
    :cond_18e
    const/4 v0, 0x0

    goto :goto_175

    .line 837
    :cond_190
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/widget/LinearLayout;

    .line 838
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    const/4 v0, 0x0

    move v1, v0

    :goto_1a4
    const/16 v0, 0x3c

    if-ge v1, v0, :cond_1e8

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v0, 0xa

    if-ge v1, v0, :cond_1e3

    const-string v0, "0"

    :goto_1b9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->minute:I

    if-ne v1, v0, :cond_1e6

    const/4 v0, 0x1

    :goto_1ca
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 841
    new-instance v3, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v5, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 839
    add-int/lit8 v0, v1, 0xf

    move v1, v0

    goto :goto_1a4

    .line 840
    :cond_1e3
    const-string v0, ""

    goto :goto_1b9

    :cond_1e6
    const/4 v0, 0x0

    goto :goto_1ca

    .line 844
    :cond_1e8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    const-string v1, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    const-string v2, "Length"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 845
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/widget/LinearLayout;

    .line 846
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->form:Landroid/widget/LinearLayout;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_24e

    .line 848
    const/4 v0, 0x0

    :goto_20c
    array-length v1, v3

    if-ge v0, v1, :cond_24d

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u043c\u0438\u043d"

    const-string v6, " min"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget v1, v3, v0

    iget v6, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->dur:I

    if-ne v1, v6, :cond_24b

    const/4 v1, 0x1

    :goto_231
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v4, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 850
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;

    const/4 v6, 0x3

    aget v7, v3, v0

    invoke-direct {v4, p0, v6, v7}, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;-><init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v5, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_20c

    .line 849
    :cond_24b
    const/4 v1, 0x0

    goto :goto_231

    .line 853
    :cond_24d
    return-void

    .line 847
    :array_24e
    .array-data 4
        0x14
        0x1e
        0x2d
        0x3c
    .end array-data
.end method

.method save()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 872
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_18

    .line 873
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    const-string v1, "\u0418\u0437\u0431\u0435\u0440\u0438 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v2, "Pick a client."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 892
    :goto_17
    return-void

    .line 876
    :cond_18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->begin()J

    move-result-wide v2

    .line 877
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->dur:I

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/Schedule;->add(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)J

    move-result-wide v0

    .line 878
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_44

    .line 879
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u044f\u043c\u0430 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440 \u0437\u0430 \u0437\u0430\u043f\u0438\u0441 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 (\u0434\u043e\u0431\u0430\u0432\u0438 Google \u0430\u043a\u0430\u0443\u043d\u0442 \u0438\u043b\u0438 \u0440\u0430\u0437\u0440\u0435\u0448\u0438 \u0434\u043e\u0441\u0442\u044a\u043f\u0430)."

    const-string v2, "No writable calendar on the tablet (add a Google account or allow access)."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_17

    .line 885
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4b} :catch_88

    .line 888
    :goto_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u00b7 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->day(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 890
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->invalidate()V

    .line 891
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    goto :goto_17

    .line 886
    :catch_88
    move-exception v0

    goto :goto_4b
.end method
