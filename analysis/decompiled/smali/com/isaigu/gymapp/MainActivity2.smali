.class public Lcom/isaigu/gymapp/MainActivity2;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity2.java"


# instance fields
.field private cal:Lcom/isaigu/gymapp/widget/CustomCalendar;

.field private cardItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation
.end field

.field private circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

.field private clothes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private computer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private food:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pvCustomOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private vpbBrightness:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->food:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->clothes:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->computer:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    return-void
.end method

.method private getCardData()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    new-instance v3, Lcom/isaigu/gymapp/bean/PickerViewData;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No.ABC12345 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_1

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "str_item":Ljava/lang/String;
    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    .line 224
    .end local v1    # "str_item":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    :cond_2
    return-void
.end method

.method private getNoLinkData()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->food:Ljava/util/ArrayList;

    const-string v1, "KFC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->food:Ljava/util/ArrayList;

    const-string v1, "MacDonald"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->food:Ljava/util/ArrayList;

    const-string v1, "Pizza hut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->clothes:Ljava/util/ArrayList;

    const-string v1, "Nike"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->clothes:Ljava/util/ArrayList;

    const-string v1, "Adidas"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->clothes:Ljava/util/ArrayList;

    const-string v1, "Armani"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->computer:Ljava/util/ArrayList;

    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->computer:Ljava/util/ArrayList;

    const-string v1, "Lenovo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->computer:Ljava/util/ArrayList;

    const-string v1, "Apple"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity2;->computer:Ljava/util/ArrayList;

    const-string v1, "HP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/MainActivity2;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity2;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 48
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/MainActivity2;->setContentView(I)V

    .line 50
    const v1, 0x7f0f009a

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/MainActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/CustomCalendar;

    iput-object v1, p0, Lcom/isaigu/gymapp/MainActivity2;->cal:Lcom/isaigu/gymapp/widget/CustomCalendar;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/ProgramPlanBean;>;"
    new-instance v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    const-string v2, "abc"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v5, v2, v3}, Lcom/isaigu/gymapp/bean/ProgramPlanBean;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    const/4 v2, 0x2

    const-string v3, "abc"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/bean/ProgramPlanBean;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0}, Lcom/isaigu/gymapp/MainActivity2;->getCardData()V

    .line 153
    new-instance v1, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v2, Lcom/isaigu/gymapp/MainActivity2$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/MainActivity2$2;-><init>(Lcom/isaigu/gymapp/MainActivity2;)V

    invoke-direct {v1, p0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    const v2, 0x7f040063

    new-instance v3, Lcom/isaigu/gymapp/MainActivity2$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/MainActivity2$1;-><init>(Lcom/isaigu/gymapp/MainActivity2;)V

    .line 160
    invoke-virtual {v1, v2, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v5}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/MainActivity2;->pvCustomOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/MainActivity2;->pvCustomOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity2;->cardItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/MainActivity2;->pvCustomOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v1, v5}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show(Z)V

    .line 202
    return-void
.end method
