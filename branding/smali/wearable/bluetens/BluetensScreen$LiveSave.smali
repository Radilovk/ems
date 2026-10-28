.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;
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
    name = "LiveSave"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 1558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1560
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveSave()V

    .line 1565
    return-void
.end method
