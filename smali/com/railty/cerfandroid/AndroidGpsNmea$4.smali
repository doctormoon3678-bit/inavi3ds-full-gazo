.class Lcom/railty/cerfandroid/AndroidGpsNmea$4;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/AndroidGpsNmea;->ForwardNmea(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

.field final synthetic val$gga:Ljava/lang/String;

.field final synthetic val$session:I

.field final synthetic val$utc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/AndroidGpsNmea;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iput p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->val$session:I

    iput-object p3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->val$utc:Ljava/lang/String;

    iput-object p4, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->val$gga:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 236
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1502(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$100(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$000(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->val$session:I

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$800(Lcom/railty/cerfandroid/AndroidGpsNmea;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->val$utc:Ljava/lang/String;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    .line 238
    invoke-static {v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1600(Lcom/railty/cerfandroid/AndroidGpsNmea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$4;->val$gga:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1700(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method
