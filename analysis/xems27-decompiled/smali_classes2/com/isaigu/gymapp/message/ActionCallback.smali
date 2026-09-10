.class public Lcom/isaigu/gymapp/message/ActionCallback;
.super Ljava/lang/Object;
.source "ActionCallback.java"


# instance fields
.field public action:S

.field public listener:Lcom/isaigu/gymapp/message/ActionListener;


# direct methods
.method public constructor <init>(SLcom/isaigu/gymapp/message/ActionListener;)V
    .locals 0
    .param p1, "action"    # S
    .param p2, "listener"    # Lcom/isaigu/gymapp/message/ActionListener;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    .line 11
    iput-short p1, p0, Lcom/isaigu/gymapp/message/ActionCallback;->action:S

    .line 12
    return-void
.end method


# virtual methods
.method public getAction()S
    .locals 1

    .line 30
    iget-short v0, p0, Lcom/isaigu/gymapp/message/ActionCallback;->action:S

    return v0
.end method

.method public getListener()Lcom/isaigu/gymapp/message/ActionListener;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    return-object v0
.end method

.method public handleActionMessage(Lcom/isaigu/gymapp/message/DataDecoder;)V
    .locals 1
    .param p1, "decoder"    # Lcom/isaigu/gymapp/message/DataDecoder;

    .line 16
    iget-object v0, p0, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/message/ActionListener;->handleAction(Lcom/isaigu/gymapp/message/DataDecoder;)V

    .line 19
    :cond_0
    return-void
.end method

.method public setAction(S)V
    .locals 0
    .param p1, "action"    # S

    .line 34
    iput-short p1, p0, Lcom/isaigu/gymapp/message/ActionCallback;->action:S

    .line 35
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/message/ActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/message/ActionListener;

    .line 26
    iput-object p1, p0, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    .line 27
    return-void
.end method
