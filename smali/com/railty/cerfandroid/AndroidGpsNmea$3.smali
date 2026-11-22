.class Lcom/railty/cerfandroid/AndroidGpsNmea$3;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/AndroidGpsNmea;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

.field final synthetic val$session:I


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/AndroidGpsNmea;I)V
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

    .line 128
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iput p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 129
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$100(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->val$session:I

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$800(Lcom/railty/cerfandroid/AndroidGpsNmea;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const-string v0, "Android \uc704\uce58 \uae30\ub2a5 \uaebc\uc9d0"

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1300()V

    .line 139
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$100(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->val$session:I

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$800(Lcom/railty/cerfandroid/AndroidGpsNmea;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$3;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const-string v0, "NMEA \ub300\uae30"

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 130
    return-void
.end method
