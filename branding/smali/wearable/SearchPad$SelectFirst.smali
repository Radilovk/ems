.class final Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;
.super Ljava/lang/Object;
.source "SearchPad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SearchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SelectFirst"
.end annotation


# instance fields
.field private final et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;->et:Landroid/widget/EditText;

    .line 415
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 420
    :try_start_2
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;->et:Landroid/widget/EditText;

    .line 421
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;->et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;->et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_16
    move v5, v2

    move-object v6, v1

    .line 422
    :goto_18
    const/4 v1, 0x4

    if-ge v5, v1, :cond_56

    if-eqz v6, :cond_56

    .line 423
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 424
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    :goto_24
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_5d

    .line 425
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "RecyclerView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_59

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 427
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_59

    .line 428
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 438
    :cond_56
    :goto_56
    return-void

    :cond_57
    move-object v1, v3

    .line 421
    goto :goto_16

    .line 424
    :cond_59
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_24

    .line 433
    :cond_5d
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_71

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6b} :catch_73

    .line 422
    :goto_6b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v4, v6

    move-object v6, v1

    goto :goto_18

    :cond_71
    move-object v1, v3

    .line 433
    goto :goto_6b

    .line 435
    :catch_73
    move-exception v1

    .line 436
    const-string v2, "SearchPad.select"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56
.end method
