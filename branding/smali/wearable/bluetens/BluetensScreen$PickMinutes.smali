.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;
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
    name = "PickMinutes"
.end annotation


# instance fields
.field final m:I

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V
    .registers 3

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 657
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;->m:I

    .line 658
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 662
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;->m:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pickMinutes(I)V

    .line 663
    return-void
.end method
