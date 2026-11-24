.class public final Lcom/isaigu/gymapp/ai/AiCoach$Turn;
.super Ljava/lang/Object;
.source "AiCoach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Turn"
.end annotation


# instance fields
.field public final ai:Z

.field public final question:Z

.field public final text:Ljava/lang/String;

.field public final voice:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Z)V
    .registers 5

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiCoach$Turn;-><init>(ZLjava/lang/String;ZZ)V

    .line 65
    return-void
.end method

.method constructor <init>(ZLjava/lang/String;ZZ)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    .line 69
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    .line 70
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    .line 71
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->voice:Z

    .line 72
    return-void
.end method
