.class Lcom/railty/cerfandroid/AndroidGpsNmea$2;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


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

    .line 115
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iput p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 2

    .line 117
    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$100(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$000(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->val$session:I

    iget-object p3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p3}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$800(Lcom/railty/cerfandroid/AndroidGpsNmea;)I

    move-result p3

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$904(Lcom/railty/cerfandroid/AndroidGpsNmea;)J

    .line 119
    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1002(Lcom/railty/cerfandroid/AndroidGpsNmea;J)J

    .line 120
    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const-string p3, "\uc218\uc2e0 \uc911"

    invoke-static {p2, p3}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x1000

    if-le p2, p3, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iget p3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->val$session:I

    invoke-static {p2, p1, p3}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1200(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;I)V

    .line 126
    return-void

    .line 122
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$2;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1104(Lcom/railty/cerfandroid/AndroidGpsNmea;)J

    .line 123
    return-void

    .line 117
    :cond_3
    :goto_1
    return-void
.end method
