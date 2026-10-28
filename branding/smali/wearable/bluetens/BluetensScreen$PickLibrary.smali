.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;
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
    name = "PickLibrary"
.end annotation


# instance fields
.field final file:Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1648
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;->file:Ljava/lang/String;

    .line 1649
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pickLibrary(Ljava/lang/String;)V

    .line 1654
    return-void
.end method
