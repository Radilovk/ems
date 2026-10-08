.class final Lcom/isaigu/gymapp/wearable/ClientSort$Place;
.super Ljava/lang/Object;
.source "ClientSort.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Place"
.end annotation


# instance fields
.field private final et:Landroid/widget/EditText;

.field private final owner:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    .line 357
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->owner:Ljava/lang/Object;

    .line 358
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 363
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 403
    :cond_b
    :goto_b
    return-void

    .line 366
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 367
    const-string v2, "xems_client_sort"

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    .line 370
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 371
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 372
    const-string v3, ""

    const/4 v4, 0x0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 373
    const-string v4, "xems_client_sort"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 374
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 375
    new-instance v4, Lcom/isaigu/gymapp/wearable/ClientSort$Open;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->owner:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort$Open;-><init>(Landroid/widget/EditText;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ClientSort;->paint(Landroid/widget/TextView;)V

    .line 377
    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 378
    instance-of v5, v0, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_75

    .line 379
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 380
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 381
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 382
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6d} :catch_6e

    goto :goto_b

    .line 400
    :catch_6e
    move-exception v0

    .line 401
    const-string v1, "ClientSort.bar"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 383
    :cond_75
    :try_start_75
    instance-of v5, v0, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_b

    .line 385
    const-string v5, "xems_refresh"

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 386
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    if-eqz v5, :cond_8d

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    :cond_8d
    add-int/2addr v1, v6

    .line 387
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 388
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    .line 389
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 390
    const/16 v4, 0xb

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 391
    const/16 v4, 0xf

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 392
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 393
    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_b

    .line 395
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 396
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 397
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Place;->et:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_df} :catch_6e

    goto/16 :goto_b
.end method
