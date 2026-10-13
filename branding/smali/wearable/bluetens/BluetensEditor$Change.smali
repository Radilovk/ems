.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;
.super Ljava/lang/Object;
.source "BluetensEditor.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Change"
.end annotation


# instance fields
.field final c:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

.field final e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

.field final f:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V
    .registers 4

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    .line 323
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;->c:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    .line 324
    iput p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;->f:I

    .line 325
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;->c:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;->f:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->change(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;II)V

    .line 330
    return-void
.end method
