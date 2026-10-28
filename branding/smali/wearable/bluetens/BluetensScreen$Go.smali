.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Go"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1331
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1335
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1336
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go()V

    .line 1337
    return-void
.end method
