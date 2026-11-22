.class Lcom/railty/cerfandroid/CellBridge$4;
.super Landroid/telephony/PhoneStateListener;
.source "CellBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CellBridge;->Start()V
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

    .line 121
    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CERF-Cell"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/CellBridge;->IsDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CellBridge;->access$000(Lcom/railty/cerfandroid/CellBridge;)Lcom/railty/cerfandroid/CellBridge$Native;

    move-result-object v0

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/railty/cerfandroid/CellBridge$Native;->CallState(ILjava/lang/String;)V

    .line 142
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {p1}, Lcom/railty/cerfandroid/CellBridge;->access$400(Lcom/railty/cerfandroid/CellBridge;)V

    .line 143
    :cond_2
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CellBridge;->access$300(Lcom/railty/cerfandroid/CellBridge;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {p1}, Lcom/railty/cerfandroid/CellBridge;->access$300(Lcom/railty/cerfandroid/CellBridge;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v1}, Lcom/railty/cerfandroid/CellBridge;->access$000(Lcom/railty/cerfandroid/CellBridge;)Lcom/railty/cerfandroid/CellBridge$Native;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/railty/cerfandroid/CellBridge$Native;->Operator(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$4;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CellBridge;->access$000(Lcom/railty/cerfandroid/CellBridge;)Lcom/railty/cerfandroid/CellBridge$Native;

    move-result-object v0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-interface {v0, p1}, Lcom/railty/cerfandroid/CellBridge$Native;->Signal(I)V

    .line 126
    return-void
.end method
