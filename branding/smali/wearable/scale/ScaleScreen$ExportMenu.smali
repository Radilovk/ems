.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExportMenu"
.end annotation


# instance fields
.field final fig:Landroid/view/View;

.field final name:Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2549
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2550
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->fig:Landroid/view/View;

    .line 2551
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->name:Ljava/lang/String;

    .line 2552
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16

    .prologue
    .line 2556
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2557
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    .line 2558
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 2559
    const-string v0, "\u0418\u0437\u043f\u0440\u0430\u0442\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v1, "Send to the client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {v5, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2560
    const-string v0, "\u041f\u043e\u0434\u0440\u0435\u0434\u0435\u043d\u043e \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u043e \u2014 \u0437\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d."

    const-string v1, "Laid out upright \u2014 for a phone."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x0

    invoke-static {v5, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2562
    const/4 v1, 0x2

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2563
    const/4 v0, 0x2

    new-array v7, v0, [[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0421\u043d\u0438\u043c\u043a\u0430"

    const-string v4, "Image"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "img"

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0423\u0435\u0431 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430"

    const-string v4, "Web page"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "web"

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    .line 2564
    array-length v8, v7

    const/4 v0, 0x0

    move v4, v0

    :goto_6a
    if-ge v4, v8, :cond_10b

    aget-object v9, v7, v4

    .line 2565
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 2566
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2567
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {v5, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42f00000    # 120.0f

    .line 2568
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2567
    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2569
    const/4 v0, 0x0

    move v3, v0

    :goto_94
    const/4 v0, 0x2

    if-ge v3, v0, :cond_fd

    .line 2570
    const/4 v0, 0x1

    if-ne v3, v0, :cond_e2

    const/4 v0, 0x1

    move v2, v0

    .line 2571
    :goto_9c
    if-eqz v2, :cond_e5

    const-string v0, "\u041f\u043e\u0434\u0440\u043e\u0431\u0435\u043d"

    const-string v1, "Detailed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2572
    :goto_a7
    if-eqz v2, :cond_ef

    const/4 v0, 0x2

    .line 2571
    :goto_aa
    invoke-static {v5, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 2573
    const-string v0, "img"

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;

    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;Z)V

    :goto_c2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2575
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v11, 0x42500000    # 52.0f

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2576
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2577
    invoke-virtual {v10, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2569
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_94

    .line 2570
    :cond_e2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9c

    .line 2571
    :cond_e5
    const-string v0, "\u041a\u0440\u0430\u0442\u044a\u043a"

    const-string v1, "Short"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_a7

    .line 2572
    :cond_ef
    const/4 v0, 0x0

    goto :goto_aa

    .line 2574
    :cond_f1
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;

    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->fig:Landroid/view/View;

    iget-object v13, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_c2

    .line 2579
    :cond_fd
    const/16 v0, 0xc

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2564
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_6a

    .line 2581
    :cond_10b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ExportMenu;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    const/high16 v1, 0x43e60000    # 460.0f

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v5, p1, v6, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->pop(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    .line 2582
    return-void
.end method
