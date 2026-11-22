.class Lcom/railty/cerfandroid/AndroidGpsNmea$5;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/AndroidGpsNmea;->ShowStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$5;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$5;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$200(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$5;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    .line 293
    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1800(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    :goto_0
    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$5;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1800(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void
.end method
