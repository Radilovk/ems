.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;
.super Ljava/lang/Object;
.source "BluetensEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddStep"
.end annotation


# instance fields
.field final e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

.field final mode:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;I)V
    .registers 3

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    .line 339
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;->mode:I

    .line 340
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;->mode:I

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    :goto_14
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->addStep(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;)V

    .line 345
    return-void

    .line 344
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
