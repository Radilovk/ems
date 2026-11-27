.class final Lcom/isaigu/gymapp/ai/WakeSetup$Again;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Again"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 251
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->begin()V

    .line 253
    return-void
.end method
