.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;
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
    name = "LibraryChip"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final part:Z

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1664
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;->id:Ljava/lang/String;

    .line 1665
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;->part:Z

    .line 1666
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;->part:Z

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libraryChip(Ljava/lang/String;Z)V

    .line 1671
    return-void
.end method
