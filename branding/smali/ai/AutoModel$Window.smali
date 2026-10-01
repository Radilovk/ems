.class public final Lcom/isaigu/gymapp/ai/AutoModel$Window;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public hz:Z

.field public hzShare:D

.field public off:Z

.field public offMinus:I

.field public offPlus:I

.field public on:Z

.field public onMinus:I

.field public onPlus:I

.field public pw:Z

.field public pwDelta:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hzShare:D

    .line 127
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    .line 128
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    .line 129
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    .line 131
    const/16 v0, 0x32

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pwDelta:I

    return-void
.end method

.method public static fixed()Lcom/isaigu/gymapp/ai/AutoModel$Window;
    .registers 1

    .prologue
    .line 134
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Window;-><init>()V

    return-object v0
.end method

.method public static main()Lcom/isaigu/gymapp/ai/AutoModel$Window;
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 138
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Window;-><init>()V

    .line 139
    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    .line 140
    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    .line 141
    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    .line 142
    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    .line 143
    return-object v0
.end method
