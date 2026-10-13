.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Edited"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 876
    return-void
.end method


# virtual methods
.method public onClosed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V
    .registers 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->edited(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 881
    return-void
.end method
