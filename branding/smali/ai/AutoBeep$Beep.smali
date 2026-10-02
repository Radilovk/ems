.class final Lcom/isaigu/gymapp/ai/AutoBeep$Beep;
.super Ljava/lang/Object;
.source "AutoBeep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoBeep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Beep"
.end annotation


# instance fields
.field private final longOne:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoBeep$Beep;->longOne:Z

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoBeep$Beep;->longOne:Z

    # invokes: Lcom/isaigu/gymapp/ai/AutoBeep;->play(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBeep;->access$000(Z)V

    .line 88
    return-void
.end method
