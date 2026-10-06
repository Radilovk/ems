.class final Lcom/isaigu/gymapp/bodytech/BtGear$Choice;
.super Ljava/lang/Object;
.source "BtGear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtGear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Choice"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final gear:Landroid/view/View;

.field final mac:Ljava/lang/String;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/high16 v5, 0x41400000    # 12.0f

    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->a:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->gear:Landroid/view/View;

    .line 69
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->mac:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 71
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c bodytech"

    const/4 v1, 0x0

    const/16 v2, 0x208

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 72
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    invoke-static {p1, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtGear$Program;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtGear$Program;-><init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const-string v1, "\u041f\u044a\u043b\u043d\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtGear$Full;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/bodytech/BtGear$Full;-><init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v0, "\u041f\u044a\u043b\u043d\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438: Hz \u0434\u043e 1000, \u0448\u0438\u0440\u0438\u043d\u0430 \u0434\u043e 511 \u00b5s, \u0444\u043e\u0440\u043c\u0430 \u0438 \u0441\u0438\u043b\u0430 \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u0438 \u0432\u0441\u0435\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441."

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p1, v0, v5, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 80
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method


# virtual methods
.method show()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 86
    return-void
.end method
