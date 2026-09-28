.class public final Lcom/isaigu/gymapp/widget/XemsModuleInfo$ChipClick;
.super Ljava/lang/Object;
.source "XemsModuleInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChipClick"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$ChipClick;->id:Ljava/lang/String;

    .line 435
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 442
    :goto_8
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1f

    .line 443
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_18

    .line 444
    check-cast v0, Landroid/app/Activity;

    .line 449
    :goto_12
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$ChipClick;->id:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 450
    return-void

    .line 447
    :cond_18
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8

    :cond_1f
    move-object v0, v1

    goto :goto_12
.end method
