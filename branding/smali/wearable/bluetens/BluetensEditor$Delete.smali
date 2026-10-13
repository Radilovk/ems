.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Delete;
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
    name = "Delete"
.end annotation


# instance fields
.field final e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V
    .registers 2

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Delete;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    .line 368
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Delete;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete()V

    .line 373
    return-void
.end method
