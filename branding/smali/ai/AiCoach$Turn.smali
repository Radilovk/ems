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


# direct methods
.method constructor <init>(ZLjava/lang/String;Z)V
    .registers 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    .line 63
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    .line 64
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    .line 65
    return-void
.end method
