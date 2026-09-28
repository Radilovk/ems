.class final Lcom/isaigu/gymapp/widget/XemsLocalStore$DossierSink;
.super Ljava/lang/Object;
.source "XemsLocalStore.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsDossier$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DossierSink"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(J)V
    .registers 4

    .prologue
    .line 1098
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeUserQuiet(J)V

    .line 1099
    return-void
.end method

.method public save(Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .registers 3

    .prologue
    .line 1093
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 1094
    return-void
.end method
