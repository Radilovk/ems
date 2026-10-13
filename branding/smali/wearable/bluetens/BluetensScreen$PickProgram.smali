.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;
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
    name = "PickProgram"
.end annotation


# instance fields
.field final p:I

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V
    .registers 3

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 806
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;->p:I

    .line 807
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 811
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;->p:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pickProgram(I)V

    .line 812
    return-void
.end method
