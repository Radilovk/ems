.class final Lcom/isaigu/gymapp/bodytech/BtTestMode;
.super Ljava/lang/Object;
.source "BtTestMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtTestMode$Redraw;,
        Lcom/isaigu/gymapp/bodytech/BtTestMode$Close;,
        Lcom/isaigu/gymapp/bodytech/BtTestMode$Stop;
    }
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final test:Lcom/isaigu/gymapp/bodytech/BtTest;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    .line 25
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 26
    if-eqz p2, :cond_82

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_82

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_1c
    const-string v1, "\u0422\u0435\u0441\u0442\u043e\u0432 \u0440\u0435\u0436\u0438\u043c \u00b7 bodytech"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041a\u043e\u0441\u0442\u044e\u043c \u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    const/16 v2, 0x3d4

    invoke-static {p1, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 28
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtTestMode$Redraw;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/bodytech/BtTestMode$Redraw;-><init>(Lcom/isaigu/gymapp/bodytech/BtTestMode;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtTest;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTestMode;->render()V

    .line 30
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtTestMode$Close;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtTestMode$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtTestMode$Stop;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtTestMode$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    return-void

    .line 26
    :cond_82
    const-string v0, ""

    goto :goto_1c

    .line 27
    :cond_85
    const/4 v0, 0x0

    goto :goto_37
.end method


# virtual methods
.method render()V
    .registers 15

    .prologue
    const/high16 v13, 0x42600000    # 56.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTest;->panel()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u0430\u043d\u0430\u043b\u0438 \u2014 \u043b\u044f\u0432\u043e \u2192 \u0434\u044f\u0441\u043d\u043e (\u0434\u0440\u044a\u0436 \u25b6)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 49
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v0, v1

    .line 50
    :goto_4c
    const/16 v3, 0x8

    if-ge v0, v3, :cond_107

    .line 51
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v3

    .line 52
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 53
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v6, v12, v7, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 56
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v1, v6, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->sliderName(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 61
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 63
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    const-string v6, "\u25b6"

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/4 v8, -0x1

    const/16 v9, 0x38

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v5

    .line 65
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/bodytech/BtTest;->touch(I)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v6, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    invoke-static {v7, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 68
    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 70
    if-lez v0, :cond_100

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 71
    :cond_100
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4c

    .line 73
    :cond_107
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 40
    return-void
.end method
