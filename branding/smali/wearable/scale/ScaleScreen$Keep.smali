.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;
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
    name = "Keep"
.end annotation


# instance fields
.field final r:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 3

    .prologue
    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1941
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1942
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;->r:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 1943
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;->r:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->keep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    .line 1948
    return-void
.end method
