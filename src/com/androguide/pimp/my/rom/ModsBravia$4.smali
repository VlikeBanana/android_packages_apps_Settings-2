.class Lcom/androguide/pimp/my/rom/ModsBravia$4;
.super Ljava/lang/Object;
.source "ModsBravia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ModsBravia;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ModsBravia;

.field private final synthetic val$file_url:Ljava/lang/String;

.field private final synthetic val$myProgress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ModsBravia;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->this$0:Lcom/androguide/pimp/my/rom/ModsBravia;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->val$file_url:Ljava/lang/String;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->val$myProgress:Landroid/app/ProgressDialog;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 263
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->val$file_url:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 267
    .local v11, urlConnection:Ljava/net/HttpURLConnection;
    const-string v12, "GET"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 268
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 271
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 276
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 279
    .local v0, SDCardRoot:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v12, "Pimp_my_Rom--Bravia.zip"

    invoke-direct {v5, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v5, file:Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 285
    .local v6, fileOutput:Ljava/io/FileOutputStream;
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 288
    .local v7, inputStream:Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 289
    .local v9, totalSize:I
    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->val$myProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v12, v9}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 291
    const/4 v3, 0x0

    .line 294
    .local v3, downloadedSize:I
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 295
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 296
    .local v2, bufferLength:I
    const/4 v8, 0x0

    .line 298
    .local v8, progress:I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 309
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 310
    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->val$myProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 317
    .end local v0           #SDCardRoot:Ljava/io/File;
    .end local v1           #buffer:[B
    .end local v2           #bufferLength:I
    .end local v3           #downloadedSize:I
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileOutput:Ljava/io/FileOutputStream;
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #progress:I
    .end local v9           #totalSize:I
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_1
    return-void

    .line 300
    .restart local v0       #SDCardRoot:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v2       #bufferLength:I
    .restart local v3       #downloadedSize:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v8       #progress:I
    .restart local v9       #totalSize:I
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 302
    add-int/2addr v3, v2

    .line 304
    move v8, v3

    .line 305
    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ModsBravia$4;->val$myProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v12, v8}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 312
    .end local v0           #SDCardRoot:Ljava/io/File;
    .end local v1           #buffer:[B
    .end local v2           #bufferLength:I
    .end local v3           #downloadedSize:I
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileOutput:Ljava/io/FileOutputStream;
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #progress:I
    .end local v9           #totalSize:I
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v4

    .line 313
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 314
    .end local v4           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 315
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method