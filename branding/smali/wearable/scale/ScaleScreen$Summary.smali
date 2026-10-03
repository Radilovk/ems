.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;
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
    name = "Summary"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1611
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1612
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1616
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showSummary()V

    .line 1618
    return-void
.end method
