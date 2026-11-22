.class Lcom/railty/cerfandroid/CellBridge$1;
.super Landroid/content/BroadcastReceiver;
.source "CellBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/CellBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CellBridge;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CellBridge;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge$1;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 43
    const-string p1, "pdus"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 44
    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 47
    check-cast v4, [B

    .line 48
    const-string v5, "format"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v4, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 49
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/railty/cerfandroid/CerfNotificationListener;->NoteSms(Ljava/lang/String;)V

    .line 52
    array-length p2, p1

    move v0, v2

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    .line 53
    check-cast v1, [B

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    array-length v4, v1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge$1;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v1}, Lcom/railty/cerfandroid/CellBridge;->access$000(Lcom/railty/cerfandroid/CellBridge;)Lcom/railty/cerfandroid/CellBridge$Native;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/railty/cerfandroid/CellBridge$Native;->DeliverSms(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_4
    return-void
.end method
