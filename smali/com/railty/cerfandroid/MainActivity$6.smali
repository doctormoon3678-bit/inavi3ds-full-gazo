.class Lcom/railty/cerfandroid/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/railty/cerfandroid/CellBridge$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;

.field final synthetic val$launchSettings:Lcom/railty/cerfandroid/DeviceSettings;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;Lcom/railty/cerfandroid/DeviceSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$6;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/MainActivity$6;->val$launchSettings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CallState(ILjava/lang/String;)V
    .locals 0

    .line 305
    invoke-static {p1, p2}, Lcom/railty/cerfandroid/MainActivity;->access$2900(ILjava/lang/String;)V

    return-void
.end method

.method public DeliverSms(Ljava/lang/String;)V
    .locals 0

    .line 307
    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$3100(Ljava/lang/String;)V

    return-void
.end method

.method public Operator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    nop

    .line 302
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$6;->val$launchSettings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$6;->val$launchSettings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object p2, p2, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    .line 301
    :goto_0
    invoke-static {p2}, Lcom/railty/cerfandroid/MainActivity;->access$2600(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/MainActivity;->access$2700(Ljava/lang/String;[B)V

    .line 303
    return-void
.end method

.method public Phonebook([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 308
    invoke-static {p1, p2}, Lcom/railty/cerfandroid/MainActivity;->access$3200([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public PollAction()Ljava/lang/String;
    .locals 1

    .line 306
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$3000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Signal(I)V
    .locals 0

    .line 304
    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$2800(I)V

    return-void
.end method
