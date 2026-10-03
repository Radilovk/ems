.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AskDelete"
.end annotation


# instance fields
.field final t:J

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;J)V
    .registers 4

    .prologue
    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2018
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;->t:J

    .line 2019
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2023
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2024
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->askDelete(J)V

    .line 2025
    return-void
.end method
