.class public Lcom/isaigu/gymapp/message/EventCallback;
.super Ljava/lang/Object;
.source "EventCallback.java"


# instance fields
.field public event:S

.field public listener:Lcom/isaigu/gymapp/message/EventListener;


# direct methods
.method public constructor <init>(SLcom/isaigu/gymapp/message/EventListener;)V
    .locals 0
    .param p1, "event"    # S
    .param p2, "listener"    # Lcom/isaigu/gymapp/message/EventListener;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    .line 12
    iput-short p1, p0, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    .line 13
    return-void
.end method


# virtual methods
.method public getEvent()S
    .locals 1

    .line 31
    iget-short v0, p0, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    return v0
.end method

.method public getListener()Lcom/isaigu/gymapp/message/EventListener;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    return-object v0
.end method

.method public handleEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/message/EventListener;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 20
    :cond_0
    return-void
.end method

.method public setEvent(S)V
    .locals 0
    .param p1, "event"    # S

    .line 35
    iput-short p1, p0, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    .line 36
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/message/EventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/message/EventListener;

    .line 27
    iput-object p1, p0, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    .line 28
    return-void
.end method
