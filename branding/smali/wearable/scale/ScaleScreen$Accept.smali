.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Accept;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Accept"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2683
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Accept;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2684
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Accept;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->accept()V

    .line 2689
    return-void
.end method
