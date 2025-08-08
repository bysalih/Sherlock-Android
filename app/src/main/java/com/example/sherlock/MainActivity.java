package com.example.sherlock;

import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.chaquo.python.PyObject;
import com.chaquo.python.Python;

public class MainActivity extends AppCompatActivity {

    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        tv = findViewById(R.id.textView);

        try {
            if (!Python.isStarted()) {
                Python.start(new AndroidPlatform(this));
            }
            Python py = Python.getInstance();
            PyObject sherlock = py.getModule("sherlock_main");
            PyObject res = sherlock.callAttr("run_sherlock_cli", new String[]{"exampletarget"});
            tv.setText("Sherlock result: " + res.toString());
        } catch (Exception e) {
            tv.setText("Error: " + e.toString());
        }
    }
}
