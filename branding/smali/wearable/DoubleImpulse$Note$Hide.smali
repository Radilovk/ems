.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hide"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1028
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->sticky:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->access$202(Z)Z

    .line 1029
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hide()V

    .line 1030
    return-void
.end method
