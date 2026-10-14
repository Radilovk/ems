.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Stop;
.super Ljava/lang/Object;
.source "BluetensMini.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stop"
.end annotation


# instance fields
.field final page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Stop;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 274
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Stop;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 279
    return-void
.end method
