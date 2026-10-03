.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Drop;
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
    name = "Drop"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1955
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Drop;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1956
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Drop;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dropped()V

    .line 1961
    return-void
.end method
