.class public Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;
.super Ljava/lang/Object;
.source "IMAPMessage.java"

# interfaces
.implements Lcom/sun/mail/imap/Utility$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchProfileCondition"
.end annotation


# instance fields
.field private hdrs:[Ljava/lang/String;

.field private need:Ljava/util/Set;

.field private needBodyStructure:Z

.field private needEnvelope:Z

.field private needFlags:Z

.field private needHeaders:Z

.field private needMessage:Z

.field private needSize:Z

.field private needUID:Z


# direct methods
.method public constructor <init>(Ljavax/mail/FetchProfile;[Lcom/sun/mail/imap/protocol/FetchItem;)V
    .locals 3
    .param p1, "fp"    # Ljavax/mail/FetchProfile;
    .param p2, "fitems"    # [Lcom/sun/mail/imap/protocol/FetchItem;

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needEnvelope:Z

    .line 1096
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needFlags:Z

    .line 1097
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needBodyStructure:Z

    .line 1098
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needUID:Z

    .line 1099
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needHeaders:Z

    .line 1100
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needSize:Z

    .line 1101
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needMessage:Z

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->hdrs:[Ljava/lang/String;

    .line 1103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->need:Ljava/util/Set;

    .line 1114
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1115
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needEnvelope:Z

    .line 1116
    :cond_0
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needFlags:Z

    .line 1118
    :cond_1
    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1119
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needBodyStructure:Z

    .line 1120
    :cond_2
    sget-object v0, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1121
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needSize:Z

    .line 1122
    :cond_3
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1123
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needUID:Z

    .line 1124
    :cond_4
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1125
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needHeaders:Z

    .line 1126
    :cond_5
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1127
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needSize:Z

    .line 1128
    :cond_6
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1129
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needMessage:Z

    .line 1130
    :cond_7
    invoke-virtual {p1}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->hdrs:[Ljava/lang/String;

    .line 1131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_8

    .line 1135
    .end local v0    # "i":I
    return-void

    .line 1132
    .restart local v0    # "i":I
    :cond_8
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/FetchItem;->getFetchProfileItem()Ljavax/mail/FetchProfile$Item;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1133
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->need:Ljava/util/Set;

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public test(Lcom/sun/mail/imap/IMAPMessage;)Z
    .locals 6
    .param p1, "m"    # Lcom/sun/mail/imap/IMAPMessage;

    .line 1142
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needEnvelope:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$1(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    return v1

    .line 1144
    :cond_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needFlags:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$2(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1145
    return v1

    .line 1146
    :cond_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needBodyStructure:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$3(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1147
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$1(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1148
    return v1

    .line 1149
    :cond_2
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needUID:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 1150
    return v1

    .line 1151
    :cond_3
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needHeaders:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$4(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1152
    return v1

    .line 1153
    :cond_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needSize:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$5(Lcom/sun/mail/imap/IMAPMessage;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$1(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1154
    return v1

    .line 1155
    :cond_5
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->needMessage:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$1(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1156
    return v1

    .line 1159
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->hdrs:[Ljava/lang/String;

    array-length v3, v2

    if-lt v0, v3, :cond_a

    .line 1163
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;->need:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1164
    .local v0, "it":Ljava/util/Iterator;
    nop

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1170
    const/4 v1, 0x0

    return v1

    .line 1165
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchItem;

    .line 1166
    .local v2, "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    iget-object v3, p1, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1167
    :cond_9
    return v1

    .line 1160
    .end local v2    # "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    .local v0, "i":I
    :cond_a
    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/IMAPMessage;->access$6(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1161
    return v1

    .line 1159
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
