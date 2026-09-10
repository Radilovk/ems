.class public final Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "WorksheetProtectionBlock.java"


# instance fields
.field private _objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

.field private _passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

.field private _protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

.field private _scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 51
    return-void
.end method

.method private checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/Record;

    .line 94
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 95
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate PageSettingsBlock record (sid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createObjectProtect()Lorg/apache/poi/hssf/record/ObjectProtectRecord;
    .locals 2

    .line 219
    new-instance v0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;-><init>()V

    .line 220
    .local v0, "retval":Lorg/apache/poi/hssf/record/ObjectProtectRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->setProtect(Z)V

    .line 221
    return-object v0
.end method

.method private static createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;
    .locals 2

    .line 237
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(I)V

    return-object v0
.end method

.method private static createScenarioProtect()Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
    .locals 2

    .line 228
    new-instance v0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;-><init>()V

    .line 229
    .local v0, "retval":Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->setProtect(Z)V

    .line 230
    return-object v0
.end method

.method private getPassword()Lorg/apache/poi/hssf/record/PasswordRecord;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    return-object v0
.end method

.method private getProtect()Lorg/apache/poi/hssf/record/ProtectRecord;
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    return-object v0
.end method

.method public static isComponentRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .line 58
    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    const/16 v0, 0xdd

    if-eq p0, v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z
    .locals 2
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_0

    .line 88
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    .line 81
    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 76
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    .line 77
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    .line 85
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    .line 73
    nop

    .line 90
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 0
    .param p0, "r"    # Lorg/apache/poi/hssf/record/Record;
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 110
    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p1, p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public addRecords(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 1
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 141
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    nop

    .line 145
    return-void

    .line 141
    :cond_0
    goto :goto_0
.end method

.method public getHCenter()Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    return-object v0
.end method

.method public getPasswordHash()I
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PasswordRecord;->getPassword()I

    move-result v0

    return v0
.end method

.method public getPasswordRecord()Lorg/apache/poi/hssf/record/PasswordRecord;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    return-object v0
.end method

.method public isObjectProtected()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->getProtect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScenarioProtected()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->getProtect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheetProtected()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ProtectRecord;->getProtect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public protectSheet(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "shouldProtectObjects"    # Z
    .param p3, "shouldProtectScenarios"    # Z

    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    .line 181
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    .line 182
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    .line 183
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->getProtect()Lorg/apache/poi/hssf/record/ProtectRecord;

    move-result-object v0

    .line 188
    .local v0, "prec":Lorg/apache/poi/hssf/record/ProtectRecord;
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->getPassword()Lorg/apache/poi/hssf/record/PasswordRecord;

    move-result-object v1

    .line 189
    .local v1, "pass":Lorg/apache/poi/hssf/record/PasswordRecord;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ProtectRecord;->setProtect(Z)V

    .line 190
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/PasswordRecord;->setPassword(I)V

    .line 191
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    if-nez v3, :cond_1

    if-eqz p2, :cond_1

    .line 192
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->createObjectProtect()Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    move-result-object v3

    .line 193
    .local v3, "rec":Lorg/apache/poi/hssf/record/ObjectProtectRecord;
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->setProtect(Z)V

    .line 194
    iput-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    .line 196
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/ObjectProtectRecord;
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    if-nez v3, :cond_2

    if-eqz p3, :cond_2

    .line 197
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->createScenarioProtect()Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    move-result-object v3

    .line 198
    .local v3, "srec":Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->setProtect(Z)V

    .line 199
    iput-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    .line 201
    .end local v3    # "srec":Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
    :cond_2
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 1
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 103
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_protectRecord:Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_objectProtectRecord:Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_scenarioProtectRecord:Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->_passwordRecord:Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 107
    return-void
.end method
