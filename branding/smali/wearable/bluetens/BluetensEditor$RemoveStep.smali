.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;
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
    name = "RemoveStep"
.end annotation


# instance fields
.field final c:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

.field final e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;)V
    .registers 3

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    .line 361
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;->c:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    .line 362
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;->c:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->removeStep(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;)V

    .line 367
    return-void
.end method
