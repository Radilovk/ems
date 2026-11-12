.class final Lcom/isaigu/gymapp/ai/ProgramInfo$Tap;
.super Ljava/lang/Object;
.source "ProgramInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ProgramInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tap"
.end annotation


# instance fields
.field final i:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Lcom/isaigu/gymapp/ai/ProgramInfo$Tap;->i:I

    .line 203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 207
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/ai/ProgramInfo$Tap;->i:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramInfo;->select(I)V

    .line 209
    return-void
.end method
