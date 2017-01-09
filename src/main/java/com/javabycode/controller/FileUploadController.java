package com.javabycode.controller;

import com.javabycode.model.FileModel;
import com.javabycode.validator.FileValidator;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

@Controller
@RequestMapping("/")
public class FileUploadController {

    @Autowired
    private FileValidator fileValidator;

    @ModelAttribute
    public FileModel fileModel(){
        return new FileModel();
    }

    @InitBinder
    protected void initBinderFileModel(WebDataBinder binder) {
        binder.setValidator(fileValidator);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String single(){
        return "index";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String handleFormUpload(@Valid FileModel fileModel,
                                   BindingResult result,
                                   RedirectAttributes redirectMap) throws IOException {

        if (result.hasErrors()){
            return "index";
        }

        MultipartFile file = fileModel.getFile();
        InputStream in = file.getInputStream();
        File destination = new File("/tmp/" + file.getOriginalFilename());
        FileUtils.copyInputStreamToFile(in, destination);

        redirectMap.addFlashAttribute("filename", file.getOriginalFilename());
        return "redirect:success";
    }
}
